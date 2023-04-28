import React from 'react'
import {Card,CardBody,CardText,Button} from 'reactstrap'

export const  MyCard =({id,imageUrl,createdAt,name,setId})=> {
  return (
    <Card
  style={{
    width: '18rem'
   
  }}
  className='m-1'
>
  <img
    alt={name}
    src={imageUrl}
  />
  <CardBody>
    <CardText>
     {name}
    </CardText>
    <Button id={id} onClick={(event)=>setId(event.target.id)}>
      Részletek..
    </Button>
  </CardBody>
</Card>
  )
}
