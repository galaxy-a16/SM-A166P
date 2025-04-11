.class final Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Ljava/security/SecureRandom;

.field private static final serialVersionUID:J = -0x71ede8812866b16fL


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;

    invoke-direct {v0}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->INSTANCE:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    return-void
.end method

.method public static current()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->INSTANCE:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static random()Ljava/util/Random;
    .locals 1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 0

    new-array p0, p1, [B

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Random;->nextBytes([B)V

    return-object p0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    const-string p0, "insecure"

    return-object p0
.end method

.method public nextBoolean()Z
    .locals 0

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public nextBytes([B)V
    .locals 0

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method

.method public nextDouble()D
    .locals 2

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 0

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    return p0
.end method

.method public nextGaussian()D
    .locals 2

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 0

    .line 1
    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 0

    .line 2
    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public nextLong()J
    .locals 2

    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->random()Ljava/util/Random;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSeed([B)V
    .locals 0

    .line 2
    return-void
.end method
