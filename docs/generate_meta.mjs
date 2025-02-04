import fetch from 'node-fetch';
import fs from 'fs';

// Fetch version value fromy yaml file https://raw.githubusercontent.com/LinwoodCloud/Butterfly/nightly/app/pubspec.yaml
const nightlyUrl = 'https://raw.githubusercontent.com/LinwoodCloud/Butterfly/nightly/app/pubspec.yaml';
const nightlyVersion = await fetch(nightlyUrl).then(res => res.text()).then(text => {
    const regex = /^version:\s(.+)\+(.+)$/gm;
    const match = regex.exec(text);
    return match[1];
}
);

// stable
const stableUrl = 'https://raw.githubusercontent.com/LinwoodCloud/Butterfly/stable/app/pubspec.yaml';
const stableVersion = await fetch(stableUrl).then(res => res.text()).then(text => {
    const regex = /^version:\s(.+)\+(.+)$/gm;
    const match = regex.exec(text);
    return match[1];
}
);

// Write nightly and stable version to meta.json
const meta = {
    version: {
        nightly: nightlyVersion,
        stable: stableVersion
    }
};

// Write to static/meta.json
const metaPath = 'static/meta.json';
// Create meta.json if it doesn't exist
if (!fs.existsSync(metaPath)) {
    fs.writeFileSync(metaPath, JSON.stringify(meta));
}