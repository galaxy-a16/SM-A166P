.class public final Lcom/google/android/gms/measurement/internal/m4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/measurement/i0;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/i0;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/m4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m4;->c:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m4;->b:Lcom/google/android/gms/internal/measurement/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/measurement/internal/m4;->a:I

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m4;->b:Lcom/google/android/gms/internal/measurement/i0;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/m4;->c:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/t3;->t()Lcom/google/android/gms/measurement/internal/c5;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m2;->k()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/g3;->l()V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c5;->t(Z)Lcom/google/android/gms/measurement/internal/w5;

    move-result-object v0

    new-instance v2, La0/a;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v0, v1, v3}, La0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/c5;->w(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/t3;->l:Lcom/google/android/gms/measurement/internal/u5;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/t3;->i(Lcom/google/android/gms/measurement/internal/a4;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lcom/google/android/gms/measurement/internal/t3;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->E:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/u5;->C(Lcom/google/android/gms/internal/measurement/i0;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
