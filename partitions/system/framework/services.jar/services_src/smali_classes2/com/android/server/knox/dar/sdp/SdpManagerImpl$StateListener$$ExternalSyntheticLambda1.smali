.class public final synthetic Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;->$r8$lambda$revdvajFGxo6ogu3_sk4yRoajK0(Lcom/android/server/knox/dar/sdp/SdpManagerImpl$StateListener;Landroid/os/IBinder;)V

    return-void
.end method
