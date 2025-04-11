.class final synthetic Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    iget-object p0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "publicSuffixListBytes"

    invoke-static {p0}, Li4/f;->O(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "publicSuffixListBytes"

    return-object p0
.end method

.method public getOwner()Lkotlin/reflect/e;
    .locals 0

    const-class p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-static {p0}, Lkotlin/jvm/internal/o;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/j;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "getPublicSuffixListBytes()[B"

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    check-cast p1, [B

    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->c:[B

    return-void
.end method
