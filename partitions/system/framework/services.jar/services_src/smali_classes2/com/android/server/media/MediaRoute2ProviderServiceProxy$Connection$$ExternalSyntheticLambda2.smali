.class public final synthetic Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

.field public final synthetic f$1:Landroid/media/RoutingSessionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Landroid/media/RoutingSessionInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;

    iget-object p0, p0, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection$$ExternalSyntheticLambda2;->f$1:Landroid/media/RoutingSessionInfo;

    invoke-static {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;->$r8$lambda$pnXXc79rZw_f8F3za9NQkVk7DRE(Lcom/android/server/media/MediaRoute2ProviderServiceProxy$Connection;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method
