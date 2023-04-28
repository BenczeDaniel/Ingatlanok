import axios from 'axios'

export const getData=async ()=>{
    const response = await axios.get('http://localhost:5000');
    return response;
}
export const getSeller=async ({queryKey})=>{
    const response = await axios.get('http://localhost:5000/'+queryKey[1]);
    return response;
}