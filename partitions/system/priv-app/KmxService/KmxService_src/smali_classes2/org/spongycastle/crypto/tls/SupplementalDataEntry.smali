.class public Lorg/spongycastle/crypto/tls/SupplementalDataEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected data:[B

.field protected dataType:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->dataType:I

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->data:[B

    return-object p0
.end method

.method public getDataType()I
    .locals 0

    iget p0, p0, Lorg/spongycastle/crypto/tls/SupplementalDataEntry;->dataType:I

    return p0
.end method
