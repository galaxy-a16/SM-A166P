.class public final synthetic Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;

    check-cast p1, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$1;->$r8$lambda$53Zn-rHz4oaEJ3GbvazbhUDtBx8(ILcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData;Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncConnectionService$CallMetadataSyncConnection;)Z

    move-result p0

    return p0
.end method
