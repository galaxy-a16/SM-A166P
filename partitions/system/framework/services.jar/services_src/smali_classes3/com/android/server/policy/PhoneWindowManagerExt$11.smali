.class public Lcom/android/server/policy/PhoneWindowManagerExt$11;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManagerExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$11;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$11;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManagerExt;ZZI)I

    return-void
.end method

.method public onAppTransitionStartingLocked(JJ)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$11;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p0, p1, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleStartTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManagerExt;ZZI)I

    move-result p0

    return p0
.end method
