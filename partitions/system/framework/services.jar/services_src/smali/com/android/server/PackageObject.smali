.class public Lcom/android/server/PackageObject;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field public packageName:Ljava/lang/String;

.field public seinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    return-void
.end method
