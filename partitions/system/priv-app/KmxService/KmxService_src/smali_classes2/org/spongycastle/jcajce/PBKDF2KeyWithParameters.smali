.class public Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;
.super Lorg/spongycastle/jcajce/PBKDF2Key;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CLorg/spongycastle/crypto/CharToByteConverter;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/jcajce/PBKDF2Key;-><init>([CLorg/spongycastle/crypto/CharToByteConverter;)V

    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->salt:[B

    iput p4, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->iterationCount:I

    return p0
.end method

.method public getSalt()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/jcajce/PBKDF2KeyWithParameters;->salt:[B

    return-object p0
.end method
