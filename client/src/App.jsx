import React, { useState } from 'react'
import './App.css'
import { Banner } from './components/Banner';
import 'bootstrap/dist/css/bootstrap.min.css';
import { QueryClient, QueryClientProvider } from 'react-query'
import { RealStates } from './components/RealStates';
import { SellerDetails } from './components/SellerDetails';
const queryClient = new QueryClient()


function App() {
  const [id,setId]=useState(0)
  
  return (
    <QueryClientProvider client={queryClient}>
      <Banner/>
      {id==0 && <RealStates setId={setId}/> }
      { id!=0 && <SellerDetails id={id} setId={setId}/>} 
    </QueryClientProvider>
  )
}

export default App
