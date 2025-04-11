.class public final synthetic Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->$r8$lambda$HDExgUqjYZ_Jh6EUWHO3MvvLrzs(Lcom/android/server/wm/MultiWindowSupportPolicyController;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
