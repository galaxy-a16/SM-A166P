.class Lorg/spongycastle/x509/CertStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDETERMINED:I = 0xc

.field public static final UNREVOKED:I = 0xb


# instance fields
.field certStatus:I

.field revocationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lorg/spongycastle/x509/CertStatus;->certStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/x509/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCertStatus()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/x509/CertStatus;->certStatus:I

    return p0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/x509/CertStatus;->revocationDate:Ljava/util/Date;

    return-object p0
.end method

.method public setCertStatus(I)V
    .locals 0

    iput p1, p0, Lorg/spongycastle/x509/CertStatus;->certStatus:I

    return-void
.end method

.method public setRevocationDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/x509/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method
