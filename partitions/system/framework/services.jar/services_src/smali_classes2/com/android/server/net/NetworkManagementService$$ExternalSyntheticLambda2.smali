.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:J

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$1:J

    iput-object p4, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$1:J

    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/net/NetworkManagementService;->$r8$lambda$HT6Uldh0A-iuUTUYyiI6TgX7-mo(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
