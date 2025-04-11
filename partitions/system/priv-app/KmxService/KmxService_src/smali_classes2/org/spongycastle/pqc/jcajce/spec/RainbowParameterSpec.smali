.class public Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static final DEFAULT_VI:[I


# instance fields
.field private vi:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->DEFAULT_VI:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0xc
        0x11
        0x16
        0x21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->DEFAULT_VI:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->checkParams()V

    return-void
.end method

.method private checkParams()V
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v3, v2

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    if-ge v3, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "v[i] has to be smaller than v[i+1]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Rainbow needs at least 1 layer, such that v1 < v2."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "no layers defined."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDocumentLength()I
    .locals 2

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    const/4 v1, 0x0

    aget p0, p0, v1

    sub-int/2addr v0, p0

    return v0
.end method

.method public getNumOfLayers()I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getVi()[I
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/pqc/jcajce/spec/RainbowParameterSpec;->vi:[I

    invoke-static {p0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object p0

    return-object p0
.end method
