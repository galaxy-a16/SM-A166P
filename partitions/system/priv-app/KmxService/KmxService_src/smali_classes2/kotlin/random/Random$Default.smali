.class public final Lkotlin/random/Random$Default;
.super Lkotlin/random/e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/Random$Default$Serialized;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/random/e;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/random/Random$Default;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lkotlin/random/Random$Default$Serialized;->INSTANCE:Lkotlin/random/Random$Default$Serialized;

    return-object p0
.end method


# virtual methods
.method public nextBits(I)I
    .locals 0

    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextBits(I)I

    move-result p0

    return p0
.end method

.method public nextBoolean()Z
    .locals 0

    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/random/e;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public nextBytes(I)[B
    .locals 0

    .line 1
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public nextBytes([B)[B
    .locals 0

    .line 2
    const-string p0, "array"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextBytes([B)[B

    move-result-object p0

    return-object p0
.end method

.method public nextBytes([BII)[B
    .locals 0

    .line 3
    const-string p0, "array"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/random/e;->nextBytes([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public nextDouble()D
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/random/e;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 0

    .line 2
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlin/random/e;->nextDouble(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public nextDouble(DD)D
    .locals 0

    .line 3
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/random/e;->nextDouble(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public nextFloat()F
    .locals 0

    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/random/e;->nextFloat()F

    move-result p0

    return p0
.end method

.method public nextInt()I
    .locals 0

    .line 1
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/random/e;->nextInt()I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 0

    .line 2
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public nextInt(II)I
    .locals 0

    .line 3
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlin/random/e;->nextInt(II)I

    move-result p0

    return p0
.end method

.method public nextLong()J
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/random/e;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 0

    .line 2
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlin/random/e;->nextLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public nextLong(JJ)J
    .locals 0

    .line 3
    invoke-static {}, Lkotlin/random/e;->access$getDefaultRandom$cp()Lkotlin/random/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/random/e;->nextLong(JJ)J

    move-result-wide p0

    return-wide p0
.end method
