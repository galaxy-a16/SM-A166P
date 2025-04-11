.class public Lorg/bouncycastle/dvcs/TargetChain;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final certs:Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/dvcs/TargetChain;->certs:Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/dvcs/TargetChain;->certs:Lorg/bouncycastle/asn1/dvcs/TargetEtcChain;

    return-object p0
.end method
