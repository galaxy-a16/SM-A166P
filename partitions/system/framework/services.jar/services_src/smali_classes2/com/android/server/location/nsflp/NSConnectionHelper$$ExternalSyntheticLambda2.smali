.class public final synthetic Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final synthetic f$1:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;->f$1:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/nsflp/NSConnectionHelper;

    iget-object p0, p0, Lcom/android/server/location/nsflp/NSConnectionHelper$$ExternalSyntheticLambda2;->f$1:Landroid/os/Message;

    invoke-static {v0, p0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->$r8$lambda$8UDGRWQU-t6dGIq3KGr12UxTdjg(Lcom/android/server/location/nsflp/NSConnectionHelper;Landroid/os/Message;)V

    return-void
.end method
