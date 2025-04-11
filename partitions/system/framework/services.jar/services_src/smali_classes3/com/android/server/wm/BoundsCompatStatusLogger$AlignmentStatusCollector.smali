.class public Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector;
.super Ljava/lang/Object;
.source "BoundsCompatStatusLogger.java"

# interfaces
.implements Lcom/android/server/wm/BoundsCompatStatusLogger$StatusCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatStatusLogger;Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector;-><init>(Lcom/android/server/wm/BoundsCompatStatusLogger;)V

    return-void
.end method


# virtual methods
.method public initializeLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    invoke-static {v0}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$fgetmAtmService(Lcom/android/server/wm/BoundsCompatStatusLogger;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getBoundsCompatAlignment()I

    move-result v0

    and-int/lit8 v1, v0, 0x70

    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const/16 v3, 0x30

    const-string v4, "Center"

    if-ne v1, v3, :cond_0

    const-string v1, "Top"

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    const-string v1, "Bottom"

    :goto_0
    const-string v3, "519306"

    invoke-static {v2, v3, v1}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mputSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x7

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatStatusLogger$AlignmentStatusCollector;->this$0:Lcom/android/server/wm/BoundsCompatStatusLogger;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const-string v4, "Left"

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "Right"

    :goto_1
    const-string v0, "519305"

    invoke-static {p0, v0, v4}, Lcom/android/server/wm/BoundsCompatStatusLogger;->-$$Nest$mputSettingLocked(Lcom/android/server/wm/BoundsCompatStatusLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
