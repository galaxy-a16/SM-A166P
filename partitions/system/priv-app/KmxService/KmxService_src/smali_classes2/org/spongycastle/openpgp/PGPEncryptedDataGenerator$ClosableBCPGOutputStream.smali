.class Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;
.super Lorg/spongycastle/bcpg/BCPGOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClosableBCPGOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;IJ)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;IJZ)V
    .locals 6

    .line 2
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;IJZ)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;Ljava/io/OutputStream;I[B)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator$ClosableBCPGOutputStream;->this$0:Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/bcpg/BCPGOutputStream;->finish()V

    return-void
.end method
