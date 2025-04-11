.class public Lcom/samsung/android/server/audio/DesktopModeHelper;
.super Ljava/lang/Object;
.source "DesktopModeHelper.java"


# static fields
.field public static sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public mDexState:Z

.field public mIsDesktopMode:Z

.field public mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/samsung/android/server/audio/DesktopModeHelper;)Landroid/content/ContentResolver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDexState(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDexState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsDesktopMode(Lcom/samsung/android/server/audio/DesktopModeHelper;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDexPolicyParameter(Lcom/samsung/android/server/audio/DesktopModeHelper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DesktopModeHelper;->setDexPolicyParameter(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/samsung/android/server/audio/DesktopModeHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper$1;-><init>(Lcom/samsung/android/server/audio/DesktopModeHelper;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 84
    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "desktopmode"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/DesktopModeHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/server/audio/DesktopModeHelper;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/samsung/android/server/audio/DesktopModeHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/DesktopModeHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;

    .line 94
    :cond_0
    sget-object p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->sInstance:Lcom/samsung/android/server/audio/DesktopModeHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isDesktopMode()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mIsDesktopMode:Z

    return p0
.end method

.method public final setDexPolicyParameter(Ljava/lang/String;)V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_dex_key;path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    .line 215
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDexState to micModeManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.DesktopModeHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p0, p0, Lcom/samsung/android/server/audio/DesktopModeHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/audio/MicModeManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/MicModeManager;

    move-result-object p0

    const-string v0, "dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MicModeManager;->updateDexState(Z)V

    :cond_0
    return-void
.end method
