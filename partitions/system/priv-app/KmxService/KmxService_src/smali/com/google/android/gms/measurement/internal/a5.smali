.class public final Lcom/google/android/gms/measurement/internal/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b5;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/measurement/internal/a5;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a5;->b:Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/measurement/internal/a5;->a:I

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/a5;->b:Lcom/google/android/gms/measurement/internal/b5;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lb0/h;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/measurement/internal/t3;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/t3;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/c5;->y(Lcom/google/android/gms/measurement/internal/c5;Landroid/content/ComponentName;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/b5;->c:Lcom/google/android/gms/measurement/internal/c5;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/c5;->d:Lcom/google/android/gms/measurement/internal/q2;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/c5;->u()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
