.class public final synthetic Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/WindowManagerPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardOcclusionChange()I

    return-void
.end method
