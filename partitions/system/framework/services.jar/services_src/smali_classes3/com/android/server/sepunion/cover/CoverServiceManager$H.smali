.class public final Lcom/android/server/sepunion/cover/CoverServiceManager$H;
.super Landroid/os/Handler;
.source "CoverServiceManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/os/Looper;)V
    .locals 1

    .line 906
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 907
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 912
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 917
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    .line 918
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetcomponent(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgettype(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)I

    move-result v1

    invoke-static {p1}, Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;->-$$Nest$fgetuser(Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mbindCoverServiceLocked(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;ILandroid/os/UserHandle;)Z

    goto :goto_0

    .line 914
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$H;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/cover/CoverState;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->-$$Nest$mhandleUpdateCoverState(Lcom/android/server/sepunion/cover/CoverServiceManager;Lcom/samsung/android/cover/CoverState;)V

    :goto_0
    return-void
.end method
