.class public Lcom/android/server/wm/KeyguardDisableHandler$1;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"

# interfaces
.implements Lcom/android/server/utils/UserTokenWatcher$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/KeyguardDisableHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquired(I)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    return-void
.end method

.method public released(I)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler$1;->this$0:Lcom/android/server/wm/KeyguardDisableHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    return-void
.end method
