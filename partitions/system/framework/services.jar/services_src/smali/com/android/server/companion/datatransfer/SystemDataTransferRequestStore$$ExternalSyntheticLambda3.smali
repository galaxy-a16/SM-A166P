.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    iget v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;->f$1:I

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda3;->f$2:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->$r8$lambda$XdC-VrGl9f_t9POSbudBKxB5gR0(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;ILjava/util/ArrayList;)V

    return-void
.end method
