.class public final synthetic Lcom/google/android/gms/measurement/internal/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o3;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/o3;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/measurement/internal/m3;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m3;->b:Lcom/google/android/gms/measurement/internal/o3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/m3;->a:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m3;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/m3;->b:Lcom/google/android/gms/measurement/internal/o3;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/r5;

    new-instance v3, Lp1/l;

    const/16 v4, 0xa

    invoke-direct {v3, v4, p0, v2}, Lp1/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/measurement/r5;-><init>(Lp1/l;I)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->b:Lcom/google/android/gms/measurement/internal/q5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/i;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/q5;->I(Lcom/google/android/gms/measurement/internal/n5;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/i;->E(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lb0/h;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/measurement/internal/t3;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t3;->g:Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->o()V

    const-wide/32 v2, 0x11d28

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "gmp_version"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c4;->F()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "app_version"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c4;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "app_version_int"

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c4;->A()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "dynamite_version"

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/j4;

    new-instance v3, Lcom/google/android/gms/measurement/internal/m3;

    invoke-direct {v3, p0, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;-><init>(Lcom/google/android/gms/measurement/internal/o3;Ljava/lang/String;I)V

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/measurement/j4;-><init>(Lcom/google/android/gms/measurement/internal/m3;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
