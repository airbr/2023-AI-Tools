
// Create a React Component that displays pagespeed insights

import { useState } from "react";
import { useEffect } from "react";

export function PageSpeedInsight({ url }) {
    const [data, setData] = useState(null);
    const [error, setError] = useState(null);
    const [loading, setLoading] = useState(false);
  
    useEffect(() => {
      if (!url) return;
  
      setLoading(true);
  
      fetch(`https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=${url}`)
        .then((response) => response.json())
        .then((data) => {
          setData(data);
          setLoading(false);
        })
        .catch((error) => {
          setError(error);
          setLoading(false);
        });
    }, [url]);
  
    if (loading) return <p>Loading...</p>;
    if (error) return <p>Error: {error.message}</p>;
    if (!data) return null;
  
    return (
      <>
        <h2>React Component</h2>
        <p>{data.lighthouseResult.finalUrl}</p>
        <p>{data.lighthouseResult.categories.performance.score * 100}</p>
      </>
    );
  }
