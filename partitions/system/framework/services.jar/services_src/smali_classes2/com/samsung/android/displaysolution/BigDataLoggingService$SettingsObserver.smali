.class public final Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BigDataLoggingService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Handler;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    .line 130
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 0
    return-void
.end method
