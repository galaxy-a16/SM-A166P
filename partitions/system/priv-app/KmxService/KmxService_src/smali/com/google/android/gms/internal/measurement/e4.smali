.class public final Lcom/google/android/gms/internal/measurement/e4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lcom/google/android/gms/internal/measurement/e4;

.field public static final b:Lcom/google/android/gms/internal/measurement/e4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/e4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/e4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/e4;->b:Lcom/google/android/gms/internal/measurement/e4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    return-void
.end method
