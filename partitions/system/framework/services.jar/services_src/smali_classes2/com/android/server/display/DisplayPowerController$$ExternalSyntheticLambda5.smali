.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$10:Z

.field public final synthetic f$11:Z

.field public final synthetic f$12:Z

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/IBinder;

.field public final synthetic f$6:Lcom/android/server/display/DisplayDeviceInfo;

.field public final synthetic f$7:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/display/DisplayDevice;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$5:Landroid/os/IBinder;

    iput-object p7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$6:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object p8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$7:Lcom/android/server/display/HighBrightnessModeMetadata;

    iput p9, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$8:I

    iput p10, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$9:I

    iput-boolean p11, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$10:Z

    iput-boolean p12, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$11:Z

    iput-boolean p13, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$12:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$1:Lcom/android/server/display/DisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$3:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$5:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$6:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$7:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget v8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$8:I

    iget v9, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$9:I

    iget-boolean v10, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$10:Z

    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$11:Z

    iget-boolean v12, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda5;->f$12:Z

    invoke-static/range {v0 .. v12}, Lcom/android/server/display/DisplayPowerController;->$r8$lambda$WaYsHPjb430OcHq0r6wy4qPhCRQ(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayDevice;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZZZ)V

    return-void
.end method
