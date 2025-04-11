.class public Lcom/android/server/desktopmode/DualModeChanger$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DualModeChanger.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$2;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$2;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-static {p0}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$mshowStabilizerModeDialogIfNeeded(Lcom/android/server/desktopmode/DualModeChanger;)V

    return-void
.end method
