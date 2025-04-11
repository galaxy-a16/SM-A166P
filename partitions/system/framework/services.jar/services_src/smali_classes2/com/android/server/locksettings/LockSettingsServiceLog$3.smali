.class public Lcom/android/server/locksettings/LockSettingsServiceLog$3;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

.field public final synthetic val$debug:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$3;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$3;->val$debug:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "LockSettingsLog"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ".zip"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$3;->val$debug:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
