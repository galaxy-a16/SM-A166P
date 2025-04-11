.class public final Lcom/google/android/gms/internal/measurement/b8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/a8;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/m3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/k3;->a()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/n3;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/n3;-><init>(Landroid/net/Uri;ZZ)V

    const-string v0, "measurement.collection.synthetic_data_mitigation"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/measurement/n3;->c(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/b8;->a:Lcom/google/android/gms/internal/measurement/m3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
