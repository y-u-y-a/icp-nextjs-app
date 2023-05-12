import Head from "next/head"
import { NextPage } from "next/types"

import styles from "@/styles/Home.module.css"

const Home: NextPage = () => {
  return (
    <div className={styles.container}>
      <Head>
        <title>Internet Computer</title>
      </Head>
      <main className={styles.main}>
        <h3 className={styles.title}>
          Welcome to Next.js Internet Computer Starter Template!
        </h3>
        {/* eslint-disable-next-line @next/next/no-img-element */}
        <img src="/logo.png" alt="DFINITY logo" className={styles.logo} />
        {/* <GreetingSection />
        <ImageSection /> */}
      </main>
    </div>
  )
}

export default Home
