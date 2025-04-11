.class public final synthetic Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/net/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/net/NetworkManagementService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkManagementService;->$r8$lambda$dPLiZVqLuvyTCl5aQ1YIHIpgVOU(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
