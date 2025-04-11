.class public abstract Lorg/spongycastle/operator/AsymmetricKeyWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/operator/KeyWrapper;


# instance fields
.field private algorithmId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/operator/AsymmetricKeyWrapper;->algorithmId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/operator/AsymmetricKeyWrapper;->algorithmId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method
