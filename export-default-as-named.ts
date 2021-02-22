import { FileInfo, API, Options } from "jscodeshift";

const transform = (fileInfo: FileInfo, api: API, options: Options) => {
  return fileInfo.source;
};

export default transform;
