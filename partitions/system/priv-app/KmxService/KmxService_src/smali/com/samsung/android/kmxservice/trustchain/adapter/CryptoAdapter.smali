.class public Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustChain::CryptoAdapter"


# instance fields
.field private final mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    return-void
.end method


# virtual methods
.method public sign([B)[B
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->sign([B)[B

    move-result-object p0

    array-length p1, p0

    if-eqz p1, :cond_0

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    :goto_0
    const-string v0, "sign data result : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrustChain::CryptoAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public verify([B[B[B)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/adapter/CryptoAdapter;->mKeystoreManager:Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/kmxservice/trustchain/manager/KeyStoreManager;->verify([B[B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    :goto_0
    const-string p2, "verify data result : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrustChain::CryptoAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
