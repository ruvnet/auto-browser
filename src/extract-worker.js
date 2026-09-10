import {extractInProcess} from './browser.js';
process.once('message',async({html,options})=>{try{process.send({result:await extractInProcess(html,options)});}catch{process.send({error:true});}});
