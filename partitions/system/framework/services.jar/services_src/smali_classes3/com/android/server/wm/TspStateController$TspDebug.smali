.class public Lcom/android/server/wm/TspStateController$TspDebug;
.super Ljava/lang/Object;
.source "TspStateController.java"


# instance fields
.field public mEnabled:Z

.field public mHoleCommand:Ljava/lang/String;

.field public mInitDisplayHeight:I

.field public mInitDisplayWidth:I

.field public mLandCommand:Ljava/lang/String;

.field public mLastCommand:Ljava/lang/String;

.field public mLastNoteMode:Ljava/lang/String;

.field public mPortCommand:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TspStateController$TspDebug;->setInitDisplaySize(II)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 917
    iput-boolean p1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    return-void
.end method

.method public setInitDisplaySize(II)V
    .locals 0

    .line 912
    iput p1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    .line 913
    iput p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    return-void
.end method

.method public updateDebugString()Ljava/lang/StringBuilder;
    .locals 3

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    iget v1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    iget v1, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mInitDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 892
    iget-object v2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mPortCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 894
    iget-object v2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLandCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 896
    iget-object v2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mHoleCommand:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 898
    iget-object p0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public updateTspState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    goto :goto_0

    .line 876
    :cond_1
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mHoleCommand:Ljava/lang/String;

    .line 877
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    goto :goto_0

    .line 871
    :cond_2
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLandCommand:Ljava/lang/String;

    .line 872
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    goto :goto_0

    .line 866
    :cond_3
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mPortCommand:Ljava/lang/String;

    .line 867
    iput-object p2, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastCommand:Ljava/lang/String;

    .line 883
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/TspStateController$TspDebug;->updateDebugString()Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TspStateController$TspDebug;->writeToSettings(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final writeToSettings(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 903
    iget-boolean v0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "setting_last_grip_cmd"

    .line 905
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 904
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 906
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "setting_last_note_mode"

    iget-object p0, p0, Lcom/android/server/wm/TspStateController$TspDebug;->mLastNoteMode:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
