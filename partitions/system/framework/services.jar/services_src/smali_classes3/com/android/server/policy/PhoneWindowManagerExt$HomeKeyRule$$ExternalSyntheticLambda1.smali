.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

.field public final synthetic f$1:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent;

    invoke-static {v0, p0}, Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;->$r8$lambda$GsJh7nCfzeJWlAAAkaTM-oT-pN0(Lcom/android/server/policy/PhoneWindowManagerExt$HomeKeyRule;Landroid/view/KeyEvent;)V

    return-void
.end method
