.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$1:Z

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;->f$2:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->$r8$lambda$NmuJlbxrdH4cBn8UeDB5Y_CspmA(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
