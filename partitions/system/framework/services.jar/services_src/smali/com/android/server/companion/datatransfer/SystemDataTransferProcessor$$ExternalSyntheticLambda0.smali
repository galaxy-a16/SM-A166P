.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/companion/ISystemDataTransferCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;ILandroid/companion/ISystemDataTransferCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/companion/ISystemDataTransferCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    iget v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda0;->f$2:Landroid/companion/ISystemDataTransferCallback;

    check-cast p1, [B

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->$r8$lambda$rVu7aiBJGBKEM31n_vBCN2caVb0(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;ILandroid/companion/ISystemDataTransferCallback;[B)V

    return-void
.end method
