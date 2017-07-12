function out = check_file(filePath, varargin)
%CHECK_FILE Checks that the given file path is valid
%   SYNTAX:
%       check_file(filePath)
%       check_file(filePath,  'Name', 'Value')
%
%   DESCRIPTION:
%       check_file(filePath) - If the given file path is valid returns true
%               otherwise throws an error.
%       check_file(filePath,  'Name', 'Value') - Specify extra checks for
%               filePath using Name, Value pair arguments.
%           Named Arguments:
%               'validExt' - Specify allowed file extensions.
%                            Must be a cell array of strings.
%
%   Copyright: R Broadley 2017
%
%   License: GNU General Public License version 2.
%            A copy of the General Public License version 2 should be included
%            with this code. If not, see <a href="matlab:web(...
%            'https://www.gnu.org/licenses/gpl-2.0.html'...
%            )"> GNU General Public License version 2</a>.

    % Imports
    import activpal_utils.helper_functions.get_file_ext

    % Parse inputs
    p = inputParser;
    addRequired(p, 'filePath', @ischar);
    addParameter(p, 'validExt', 0, @iscellstr);
    parse(p, filePath, varargin{:});

    % Get inputs
    filePath = p.Results.filePath;
    validExt = p.Results.validExt;


    fileExt = get_file_ext(filePath);

    % If no valid extensions given, validExt = fileExt to prevent errors later
    if any(strcmp(p.UsingDefaults, 'validExt'))
        validExt = fileExt;
    end

    msgID = 'check_file:fileError';

    if ~exist(filePath, 'file')
        msgText = 'File does not exist:\n %s';
        ME = MException(msgID, msgText, filePath);
        throw(ME);
    elseif ~any(strcmp(fileExt, validExt))
        msgText = 'File extension %s is not recognised';
        ME = MException(msgID, msgText, fileExt);
        throw(ME);
    else
        out = true;
    end
end
