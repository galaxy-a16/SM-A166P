.class public Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GmsAlarmManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    .line 1139
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const-string p1, "GmsAlarmManager"

    const-string/jumbo v0, "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!"

    .line 1144
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-static {p0}, Lcom/android/server/alarm/GmsAlarmManager;->-$$Nest$mgetSettingsValueFromDB(Lcom/android/server/alarm/GmsAlarmManager;)V

    return-void
.end method
