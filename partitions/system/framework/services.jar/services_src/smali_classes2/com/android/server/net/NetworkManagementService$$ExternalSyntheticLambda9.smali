.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;->f$1:Z

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda9;->f$1:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/net/NetworkManagementService;->$r8$lambda$Nzd6tas6Kqnc4N-7qveEReo-7WI(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
