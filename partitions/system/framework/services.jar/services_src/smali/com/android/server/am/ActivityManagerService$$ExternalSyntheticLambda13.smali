.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

.field public final synthetic f$2:Landroid/content/Intent;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$2:Landroid/content/Intent;

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$1:Landroid/app/IUnsafeIntentStrictModeCallback;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$2:Landroid/content/Intent;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$t5fcMXrci4D72e_a4SWFN06PLU0(Lcom/android/server/am/ActivityManagerService;Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;I)V

    return-void
.end method
