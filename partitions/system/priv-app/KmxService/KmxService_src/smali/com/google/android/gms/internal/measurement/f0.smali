.class public abstract Lcom/google/android/gms/internal/measurement/f0;
.super Lcom/google/android/gms/internal/measurement/w;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/g0;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/g0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/g0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/measurement/g0;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/e0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/e0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 11

    const-string v2, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy"

    const/4 v8, 0x1

    const/4 v3, 0x0

    const-string v4, "com.google.android.gms.measurement.api.internal.IBundleReceiver"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v3

    :pswitch_1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->setConsentThirdParty(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_2
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->setConsent(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->clearMeasurementEnabled(J)V

    goto/16 :goto_15

    :pswitch_4
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/measurement/g0;->setDefaultEventParameters(Landroid/os/Bundle;)V

    goto/16 :goto_15

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_6
    sget-object v2, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v3, v8

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v3}, Lcom/google/android/gms/internal/measurement/g0;->setDataCollectionEnabled(Z)V

    goto/16 :goto_15

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_4

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5, v2}, Lcom/google/android/gms/internal/measurement/g0;->getTestFlag(Lcom/google/android/gms/internal/measurement/i0;I)V

    goto/16 :goto_15

    :pswitch_8
    sget-object v2, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2}, Lcom/google/android/gms/internal/measurement/g0;->initForTests(Ljava/util/Map;)V

    goto/16 :goto_15

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/k0;

    if-eqz v4, :cond_6

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/k0;

    goto :goto_2

    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/measurement/j0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/j0;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/k0;)V

    goto/16 :goto_15

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/k0;

    if-eqz v4, :cond_8

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/k0;

    goto :goto_3

    :cond_8
    new-instance v5, Lcom/google/android/gms/internal/measurement/j0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/j0;-><init>(Landroid/os/IBinder;)V

    :goto_3
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/k0;)V

    goto/16 :goto_15

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v3, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/k0;

    if-eqz v4, :cond_a

    move-object v5, v2

    check-cast v5, Lcom/google/android/gms/internal/measurement/k0;

    goto :goto_4

    :cond_a
    new-instance v5, Lcom/google/android/gms/internal/measurement/j0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/j0;-><init>(Landroid/os/IBinder;)V

    :goto_4
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/k0;)V

    goto/16 :goto_15

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v6

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    move-object v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/g0;->logHealthData(ILjava/lang/String;Li3/a;Li3/a;Li3/a;)V

    goto/16 :goto_15

    :pswitch_d
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v5, :cond_c

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_5

    :cond_c
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/i0;J)V

    goto/16 :goto_15

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v5, :cond_e

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_6

    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivitySaveInstanceState(Li3/a;Lcom/google/android/gms/internal/measurement/i0;J)V

    goto/16 :goto_15

    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityResumed(Li3/a;J)V

    goto/16 :goto_15

    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityPaused(Li3/a;J)V

    goto/16 :goto_15

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityDestroyed(Li3/a;J)V

    goto/16 :goto_15

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/g0;->onActivityCreated(Li3/a;Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityStopped(Li3/a;J)V

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->onActivityStarted(Li3/a;J)V

    goto/16 :goto_15

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->endAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->beginAdUnitExposure(Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_10

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_7

    :cond_10
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->generateEventId(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_12

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_8

    :cond_12
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_8
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->getGmpAppId(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_9

    :cond_13
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_14

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_9

    :cond_14
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_9
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->getAppInstanceId(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_a

    :cond_15
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_16

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_a

    :cond_16
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_17

    goto :goto_b

    :cond_17
    const-string v3, "com.google.android.gms.measurement.api.internal.IStringProvider"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/m0;

    if-eqz v4, :cond_18

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/m0;

    goto :goto_b

    :cond_18
    new-instance v5, Lcom/google/android/gms/internal/measurement/l0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/l0;-><init>(Landroid/os/IBinder;)V

    :goto_b
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/m0;)V

    goto/16 :goto_15

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_c

    :cond_19
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_1a

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_c

    :cond_1a
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_c
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1b

    goto :goto_d

    :cond_1b
    invoke-interface {v2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v4, :cond_1c

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_d

    :cond_1c
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_d
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v5}, Lcom/google/android/gms/internal/measurement/g0;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-wide v4, v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/g0;->setCurrentScreen(Li3/a;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->setSessionTimeoutDuration(J)V

    goto/16 :goto_15

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->setMinimumSessionDuration(J)V

    goto/16 :goto_15

    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/g0;->resetAnalyticsData(J)V

    goto/16 :goto_15

    :pswitch_22
    sget-object v2, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1d

    move v3, v8

    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/g0;->setMeasurementEnabled(ZJ)V

    goto/16 :goto_15

    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_1e

    goto :goto_e

    :cond_1e
    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v5, :cond_1f

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_e

    :cond_1f
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_e
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/g0;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v4}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_15

    :pswitch_25
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    goto/16 :goto_15

    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/g0;->setUserId(Ljava/lang/String;J)V

    goto/16 :goto_15

    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_20

    goto :goto_f

    :cond_20
    invoke-interface {v3, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_f

    :cond_21
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_f
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v5}, Lcom/google/android/gms/internal/measurement/g0;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22

    move v3, v8

    :cond_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_23

    goto :goto_10

    :cond_23
    invoke-interface {v7, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v5, :cond_24

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_10

    :cond_24
    new-instance v5, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_10
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v6, v3, v5}, Lcom/google/android/gms/internal/measurement/g0;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/i0;)V

    goto/16 :goto_15

    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/measurement/x;->a:Ljava/lang/ClassLoader;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    move v6, v8

    goto :goto_11

    :cond_25
    move v6, v3

    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-wide v5, v9

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/g0;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Li3/a;ZJ)V

    goto/16 :goto_15

    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v6}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_26

    move-object v4, v5

    goto :goto_12

    :cond_26
    invoke-interface {v7, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/i0;

    if-eqz v5, :cond_27

    check-cast v4, Lcom/google/android/gms/internal/measurement/i0;

    goto :goto_12

    :cond_27
    new-instance v4, Lcom/google/android/gms/internal/measurement/h0;

    invoke-direct {v4, v7}, Lcom/google/android/gms/internal/measurement/h0;-><init>(Landroid/os/IBinder;)V

    :goto_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    move-wide v5, v9

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/g0;->logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/i0;J)V

    goto :goto_15

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v5}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    move v6, v8

    goto :goto_13

    :cond_28
    move v6, v3

    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_29

    move v7, v8

    goto :goto_14

    :cond_29
    move v7, v3

    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move v5, v7

    move-wide v6, v9

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/g0;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    goto :goto_15

    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Li3/b;->c(Landroid/os/IBinder;)Li3/a;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/n0;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/google/android/gms/internal/measurement/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/n0;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/x;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/g0;->initialize(Li3/a;Lcom/google/android/gms/internal/measurement/n0;J)V

    :goto_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
