.class public final synthetic Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/app/AlarmManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;ZLandroid/app/AlarmManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;->f$1:Z

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;->f$2:Landroid/app/AlarmManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;->f$1:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$$ExternalSyntheticLambda13;->f$2:Landroid/app/AlarmManager;

    invoke-static {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->$r8$lambda$mS004V4GmZ_GFoVncj-Jz2P0Bzs(Lcom/android/server/policy/PhoneWindowManagerExt;ZLandroid/app/AlarmManager;)V

    return-void
.end method
