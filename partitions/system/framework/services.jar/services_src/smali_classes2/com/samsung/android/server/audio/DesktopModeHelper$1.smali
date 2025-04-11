.class public Lcom/samsung/android/server/audio/DesktopModeHelper$1;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 6

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fgetmResolver(Lcom/samsung/android/server/audio/DesktopModeHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "audio_output_to_display"

    invoke-static {v2, v4, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEX enabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAudioOutputToDisplay : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AS.DesktopModeHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    xor-int/lit8 v0, v0, 0x1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fgetmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z

    move-result v2

    if-eq v2, v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {v2, v0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fputmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fputmIsDesktopMode(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V

    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;->this$0:Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-static {p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$fgetmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "dex"

    goto :goto_2

    :cond_4
    const-string/jumbo p1, "none"

    :goto_2
    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->-$$Nest$msetDexPolicyParameter(Lcom/samsung/android/server/audio/DesktopModeHelper;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
