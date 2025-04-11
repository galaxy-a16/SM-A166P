.class final Lkotlin/random/KotlinRandom;
.super Ljava/util/Random;
.source "SourceFile"


# static fields
.field private static final Companion:Lkotlin/random/c;

.field private static final serialVersionUID:J


# instance fields
.field private final impl:Lkotlin/random/e;

.field private seedInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/random/c;

    invoke-direct {v0}, Lkotlin/random/c;-><init>()V

    sput-object v0, Lkotlin/random/KotlinRandom;->Companion:Lkotlin/random/c;

    return-void
.end method

.method public constructor <init>(Lkotlin/random/e;)V
    .locals 1

    const-string v0, "impl"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    return-void
.end method


# virtual methods
.method public final getImpl()Lkotlin/random/e;
    .locals 0

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    return-object p0
.end method

.method public next(I)I
    .locals 0

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextBits(I)I

    move-result p0

    return p0
.end method

.method public nextBoolean()Z
    .locals 0

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0}, Lkotlin/random/e;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public nextBytes([B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextBytes([B)[B

    return-void
.end method

.method public nextDouble()D
    .locals 2

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0}, Lkotlin/random/e;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 0

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0}, Lkotlin/random/e;->nextFloat()F

    move-result p0

    return p0
.end method

.method public nextInt()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0}, Lkotlin/random/e;->nextInt()I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0, p1}, Lkotlin/random/e;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public nextLong()J
    .locals 2

    iget-object p0, p0, Lkotlin/random/KotlinRandom;->impl:Lkotlin/random/e;

    invoke-virtual {p0}, Lkotlin/random/e;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 0

    iget-boolean p1, p0, Lkotlin/random/KotlinRandom;->seedInitialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkotlin/random/KotlinRandom;->seedInitialized:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Setting seed is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
