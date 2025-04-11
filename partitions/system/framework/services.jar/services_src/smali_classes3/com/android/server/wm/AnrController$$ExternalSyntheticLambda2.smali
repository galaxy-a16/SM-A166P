.class public final synthetic Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/AnrController;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:Lcom/android/server/wm/WindowState;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AnrController;

    iput-object p2, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/wm/WindowState;

    iput-object p4, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/AnrController;

    iget-object v1, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda2;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/AnrController;->$r8$lambda$shKl7U4dvsAJcIebeIDVioQ5vKA(Lcom/android/server/wm/AnrController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    return-void
.end method
