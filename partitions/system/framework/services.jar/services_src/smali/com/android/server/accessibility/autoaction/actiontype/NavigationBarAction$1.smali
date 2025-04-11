.class public Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;
.super Ljava/lang/Object;
.source "NavigationBarAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance p0, Landroid/app/Instrumentation;

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
