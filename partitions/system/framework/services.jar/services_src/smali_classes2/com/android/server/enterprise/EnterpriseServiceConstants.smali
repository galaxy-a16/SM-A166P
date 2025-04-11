.class public abstract Lcom/android/server/enterprise/EnterpriseServiceConstants;
.super Ljava/lang/Object;
.source "EnterpriseServiceConstants.java"


# static fields
.field public static final KEY_CUSTOMIZE_INTENT_KEYPRESS:Ljava/util/List;

.field public static final KEY_CUSTOMIZE_KEYCODE:Ljava/util/List;

.field public static final KEY_CUSTOMIZE_KEYPRESS:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_KEYCODE:Ljava/util/List;

    .line 46
    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;

    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_KEYPRESS:Ljava/util/List;

    .line 54
    new-instance v0, Lcom/android/server/enterprise/EnterpriseServiceConstants$3;

    invoke-direct {v0}, Lcom/android/server/enterprise/EnterpriseServiceConstants$3;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseServiceConstants;->KEY_CUSTOMIZE_INTENT_KEYPRESS:Ljava/util/List;

    return-void
.end method
