.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/wm/ActivityRecord;

    iput p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$3:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$4:Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$2:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$3:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;->f$4:Lcom/android/server/uri/NeededUriGrants;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/wm/ActivityRecord;->$r8$lambda$UMX-HKl_-X1MX4axAXYb7k8eYG4(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    return-void
.end method
