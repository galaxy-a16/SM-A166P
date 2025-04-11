.class public Lorg/spongycastle/crypto/params/ParametersWithID;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private id:[B

.field private parameters:Lorg/spongycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/CipherParameters;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->id:[B

    return-void
.end method


# virtual methods
.method public getID()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->id:[B

    return-object p0
.end method

.method public getParameters()Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/params/ParametersWithID;->parameters:Lorg/spongycastle/crypto/CipherParameters;

    return-object p0
.end method
